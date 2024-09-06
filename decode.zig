const std = @import("std");

pub fn main() !void {
    const allocator = std.heap.page_allocator;

    // Read input from STDIN
    const json_data = try std.io.getStdIn().readToEndAlloc(allocator, 0xFFFFFFFF);
    defer allocator.free(json_data);

    const output_data = try std.json.parseFromSlice([]u8, allocator, json_data, .{});
    defer output_data.deinit();

    // Write the decoded data to STDOUT
    try std.io.getStdOut().writeAll(output_data.value);
}
