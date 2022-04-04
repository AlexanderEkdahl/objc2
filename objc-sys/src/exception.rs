//! Defined in:
//! Apple: `objc-exception.h`
//! GNUStep: `eh_personality.c`, which is a bit brittle to rely on, but I
//!   think it's fine...
#[cfg(not(objfw))]
use core::ffi::c_void;
#[cfg(apple)]
use std::os::raw::c_int;

#[cfg(apple)]
use crate::objc_class;
use crate::objc_object;

/// Remember that this is non-null!
#[cfg(apple)]
pub type objc_exception_matcher =
    unsafe extern "C" fn(catch_type: *mut objc_class, exception: *mut objc_object) -> c_int;

/// Remember that this is non-null!
#[cfg(apple)]
pub type objc_exception_preprocessor =
    unsafe extern "C" fn(exception: *mut objc_object) -> *mut objc_object;

/// Remember that this is non-null!
#[cfg(apple)]
pub type objc_uncaught_exception_handler = unsafe extern "C" fn(exception: *mut objc_object);

#[cfg(objfw)]
pub type objc_uncaught_exception_handler =
    Option<unsafe extern "C" fn(exception: *mut objc_object)>;

/// Only available on macOS.
///
/// Remember that this is non-null!
#[cfg(all(apple, target_os = "macos"))]
pub type objc_exception_handler =
    unsafe extern "C" fn(unused: *mut objc_object, context: *mut c_void);

extern_c! {
    #[cfg(not(objfw))]
    pub fn objc_begin_catch(exc_buf: *mut c_void) -> *mut objc_object;
    #[cfg(not(objfw))]
    pub fn objc_end_catch();
    /// See [`objc-exception.h`].
    ///
    /// [`objc-exception.h`]: https://github.com/apple-oss-distributions/objc4/blob/objc4-818.2/runtime/objc-exception.h
    pub fn objc_exception_throw(exception: *mut objc_object) -> !;
    #[cfg(apple)]
    pub fn objc_exception_rethrow() -> !;
    #[cfg(any(gnustep, winobjc))]
    pub fn objc_exception_rethrow(exc_buf: *mut c_void) -> !;

    #[cfg(apple)]
    pub fn objc_setExceptionMatcher(f: objc_exception_matcher) -> objc_exception_matcher;
    #[cfg(apple)]
    pub fn objc_setExceptionPreprocessor(
        f: objc_exception_preprocessor,
    ) -> objc_exception_preprocessor;
    #[cfg(any(apple, objfw))]
    pub fn objc_setUncaughtExceptionHandler(
        f: objc_uncaught_exception_handler,
    ) -> objc_uncaught_exception_handler;

    /// Only available on macOS.
    #[cfg(all(apple, target_os = "macos"))]
    pub fn objc_addExceptionHandler(f: objc_exception_handler, context: *mut c_void) -> usize;
    /// Only available on macOS.
    #[cfg(all(apple, target_os = "macos"))]
    pub fn objc_removeExceptionHandler(token: usize);

    // Only available when ENABLE_OBJCXX is set, and a useable C++ runtime is
    // present when building libobjc2.
    //
    // #[cfg(gnustep)]
    // pub fn objc_set_apple_compatible_objcxx_exceptions(newValue: c_int) -> c_int;
}
