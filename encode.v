import os
import json

fn main() {
	// Read input from STDIN
	input_data := os.stdin.read_bytes_at(0xFFFFFFFF, 0) or {
		eprintln('Error reading input: ${err}')
		return
	}

	// Encode input as JSON
	encoded_json := json.encode(input_data)

	// Write encoded JSON to STDOUT
	println(encoded_json)
}
