const std = @import("std");
const fs = std.fs;

pub fn execute() !void {
    var dir = try fs.cwd().openDir(".", .{});
    defer dir.close();

    var dir_iterate = dir.iterate();
    while (try dir_iterate.next()) |entry| {
        std.debug.print("{s}\n", .{entry.name});
    }
}
