const std = @import("std");

fn a() void {
    while (true) {
        std.debug.print("Hello from thread a\n", .{});
        std.time.sleep(std.time.ns_per_ms * 250);
    }
}

fn b() void {
    while (true) {
        std.debug.print("Hello from thread b\n", .{});
        std.time.sleep(std.time.ns_per_ms * 333);
    }
}

pub fn execute() !void {
    const aa = try std.Thread.spawn(.{}, a, .{});
    const bb = try std.Thread.spawn(.{}, b, .{});
    _ = aa;
    _ = bb;
    std.time.sleep(1 * std.time.ns_per_s);
}
