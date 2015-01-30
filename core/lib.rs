#![crate_name = "objc"]
#![crate_type = "lib"]

#![feature(collections, core, hash, std_misc, unboxed_closures, unsafe_destructor)]

extern crate libc;
extern crate malloc_buf;

#[cfg(test)]
extern crate objc_test_utils;

pub use id::{Id, IdSlice, IntoIdVector, Owned, Ownership, Shared, ShareId};
pub use declare::{ClassDecl, MethodDecl};
pub use encode::{encode, Encode, EncodePtr};
pub use message::{send_message, send_message_verified, Message, MessageArguments, ToMessage};
pub use weak::WeakId;

#[macro_use]
mod macros;

pub mod runtime;
mod id;
pub mod block;
mod declare;
mod encode;
mod message;
mod weak;
