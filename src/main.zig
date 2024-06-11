const std = @import("std");
const arrayList = @import("array_list.zig");
const vector = @import("vector.zig");
const threading = @import("threading.zig");
const file_system = @import("file_system.zig");

pub fn main() !void {
    try arrayList.execute();
    try vector.execute();
    try threading.execute();
    try file_system.execute();
}
