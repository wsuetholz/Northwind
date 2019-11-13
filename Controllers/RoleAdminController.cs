using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Northwind.Model.Entities;

namespace Northwind.Controllers
{
    public class RoleAdminController : Controller
    {
        UserManager<AppUser> _userManager;
        RoleManager<IdentityRole> _roleManager;

        public RoleAdminController(UserManager<AppUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            _userManager = userManager;
            _roleManager = roleManager;
        }

        //[Authorize(Roles ="Administrators")]
        public IActionResult Index()
        {
            return View(_roleManager.Roles);
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create([Required]string name)
        {
            if (ModelState.IsValid)
            {
                IdentityResult result = await _roleManager.CreateAsync(new IdentityRole(name));
                if (result.Succeeded)
                {
                    return RedirectToAction("Index");
                }
                else
                {
                    AddErrorsFromResult(result);
                }
            }

            return View(name);
        }

        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Delete(string id)
        {
            IdentityRole role = await _roleManager.FindByIdAsync(id);

            if (role != null)
            {
                IdentityResult result = await _roleManager.DeleteAsync(role);

                if (result.Succeeded)
                {
                    return RedirectToAction("Index");
                }
                else
                {
                    AddErrorsFromResult(result);
                }
            }
            else
            {
                ModelState.AddModelError("", "No role found");
            }

            return View("Index", _roleManager.Roles);
        }

        public async Task<IActionResult> Edit(string id)
        {
            IdentityRole role = await _roleManager.FindByIdAsync(id);

            if (role != null)
            {
                List<AppUser> members = new List<AppUser>();
                List<AppUser> nonMembers = new List<AppUser>();
                foreach (AppUser user in _userManager.Users)
                {
                    var list = await _userManager.IsInRoleAsync(user, role.Name) ? members : nonMembers;
                    list.Add(user);
                }

                return View(new RoleEdit { Role = role, Members = members, NonMembers = nonMembers });
            }

            return View("Index", _roleManager.Roles);
        }

        [HttpPost]
        public async Task<IActionResult> Edit(RoleModification modification)
        {
            IdentityResult result;
            if (ModelState.IsValid)
            {
                foreach (string userId in modification.IdsToAdd ?? new string[] { })
                {
                    AppUser user = await _userManager.FindByIdAsync(userId);
                    if (user != null)
                    {
                        result = await _userManager.AddToRoleAsync(user, modification.RoleName);
                        if (!result.Succeeded)
                        {
                            AddErrorsFromResult(result);
                        }
                    }
                }
                foreach (string userId in modification.IdsToDelete ?? new string[] { })
                {
                    AppUser user = await _userManager.FindByIdAsync(userId);
                    if (user != null)
                    {
                        result = await _userManager.RemoveFromRoleAsync(user, modification.RoleName);
                        if (!result.Succeeded)
                        {
                            AddErrorsFromResult(result);
                        }
                    }
                }

                return View("Index", _roleManager.Roles);
            }
            else
            {
                return await Edit(modification.RoleId);
            }
        }

        //        public async Task<IActionResult> Edit(string name)
        //        {
        //await _userManager.AddToRoleAsync()

        //            return View("Index");
        //        }

        private void AddErrorsFromResult(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error.Description);
            }
        }
    }
}