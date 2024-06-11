const std = @import("std");
const math = std.math;

const Vector2f = struct {
    x: f32,
    y: f32,

    pub fn init(x: f32, y: f32) Vector2f {
        return Vector2f{ .x = x, .y = y };
    }

    pub fn add(self: Vector2f, other: Vector2f) Vector2f {
        return Vector2f{ .x = self.x + other.x, .y = self.y + other.y };
    }

    pub fn sub(self: Vector2f, other: Vector2f) Vector2f {
        return Vector2f{ .x = self.x - other.x, .y = self.y - other.y };
    }

    pub fn div(self: Vector2f, scalar: f32) Vector2f {
        return Vector2f{ .x = self.x / scalar, .y = self.y / scalar };
    }

    pub fn mul(self: Vector2f, scalar: f32) Vector2f {
        return Vector2f{ .x = self.x * scalar, .y = self.y * scalar };
    }

    pub fn print(self: Vector2f) void {
        std.debug.print("({d:.7}, {d:.7})\n", .{ self.x, self.y });
    }
};

pub fn execute() !void {
    const v1 = Vector2f.init(1.0, 2.0);
    const v2 = Vector2f.init(3.0, 4.0);
    const v3 = v1.add(v2);
    const v4 = v1.sub(v2);
    const v5 = v3.mul(math.pi);
    const v6 = v3.div(3.0);

    v3.print();
    v4.print();
    v5.print();
    v6.print();
}
