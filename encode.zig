const std = @import("std");

pub fn main() !void {
    const allocator = std.heap.page_allocator;

    // Read input from STDIN
    const input_data = try std.io.getStdIn().readToEndAlloc(allocator, 0xFFFFFFFF);
    defer allocator.free(input_data);

    const stdout_writer = std.fs.File.writer(std.io.getStdOut());

    // Encode input as JSON
    try std.json.encodeJsonString(input_data, .{}, stdout_writer);
}
