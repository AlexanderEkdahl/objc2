//! Test that fast enumeration is handled efficiently.
#![cfg(feature = "Foundation_NSArray")]
use core::hint::black_box;

use icrate::Foundation::array::Iter;
use icrate::Foundation::{NSArray, NSObject};

// Should ideally just be zero-initialized.
#[no_mangle]
fn iter_create(array: &NSArray<NSObject>) -> Iter<'_, NSObject> {
    array.iter()
}

#[no_mangle]
fn iter_once<'a>(iter: &mut Iter<'a, NSObject>) -> Option<&'a NSObject> {
    iter.next()
}

#[inline(never)]
#[no_mangle]
fn use_obj(obj: &NSObject) {
    black_box(obj);
}

#[no_mangle]
fn iter(array: &NSArray<NSObject>) {
    for obj in array {
        use_obj(obj);
    }
}

#[no_mangle]
fn iter_noop(array: &NSArray<NSObject>) {
    for _ in array {}
}

#[no_mangle]
fn iter_retained(array: &NSArray<NSObject>) {
    for obj in array.iter_retained() {
        use_obj(&obj);
    }
}
