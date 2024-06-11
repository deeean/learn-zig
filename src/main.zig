const std = @import("std");
const arrayList = @import("array_list.zig");
const vector = @import("vector.zig");

pub fn main() !void {
    try arrayList.execute();
    try vector.execute();
}
