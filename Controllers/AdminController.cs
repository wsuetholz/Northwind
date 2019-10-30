using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Northwind.Model.Entities;

namespace Northwind.Controllers
{
    public class AdminController : Controller
    {
        private UserManager<AppUser> _userManager;

        public AdminController(UserManager<AppUser> userManager)
        {
            _userManager = userManager;
        }

        public IActionResult Index()
        {
            return View(_userManager.Users);
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create([Required]string userName, [Required]string emailAddr, [Required]string password)
        {
            if (ModelState.IsValid)
            {
                AppUser user = new AppUser
                {
                    UserName = userName,
                    Email = emailAddr
                };

                IdentityResult result = await _userManager.CreateAsync(user, password);
                if (result.Succeeded)
                {
                    return RedirectToAction("Index");
                }
                else
                {
                    AddErrorsFromResult(result);
                }
            }

            return View();
        }

        public async Task<IActionResult> Edit(string id)
        {
            AppUser user = await _userManager.FindByIdAsync(id);

            if (user == null)
            {
                return RedirectToAction("Index");
            }
            else
            {
                return View(user);
            }
        }

        [HttpPost]
        public async Task<IActionResult> Edit([Required]string id, [Required]string userName, [Required]string currentPassword, [Required]string newPassword)
        {
            AppUser user = null;

            if (ModelState.IsValid)
            {
                user = await _userManager.FindByIdAsync(id);

                if (user != null)
                {
                    user.UserName = userName;
                    IdentityResult result = await _userManager.UpdateAsync(user);
                    if (result.Succeeded)
                    {
                        if (currentPassword != null && currentPassword.Length > 0)
                        {
                            result = await _userManager.ChangePasswordAsync(user, currentPassword, newPassword);
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
                            return RedirectToAction("Index");
                        }
                    }
                    else
                    {
                        AddErrorsFromResult(result);
                    }
                }
            }

            user = await _userManager.FindByIdAsync(id);
            if (user == null)
            {
                return RedirectToAction("Index");
            }
            else
            {
                return View(user);
            }
        }

        public async Task<IActionResult> Delete(string id)
        {
            AppUser user = await _userManager.FindByIdAsync(id);

            if (user != null)
            {
                IdentityResult result = await _userManager.DeleteAsync(user);

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
                ModelState.AddModelError("", "No user found");
            }

            return View("Index", _userManager.Users);
        }

        private void AddErrorsFromResult(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error.Description);
            }
        }
    }
}