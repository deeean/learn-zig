const std = @import("std");

pub fn execute() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    defer {
        const status = gpa.deinit();
        if (status != .ok) {
            std.debug.print("Failed to deinitialize allocator\n", .{});
        }
    }

    var list = std.ArrayList(usize).init(allocator);
    defer list.deinit();

    for (0..100) |i| {
        try list.append(i);
    }

    var sum: usize = 0;
    for (list.items) |i| {
        sum += i;
    }

    std.debug.print("Sum: {}\n", .{sum});
}
