import os
import json

fn main() {
    // Read input from STDIN
    json_input := os.stdin.read_all() or {
        eprintln('Error reading input: $err')
        return
    }

    // Decode the JSON input
    decoded_data := json.decode(json_input) or {
        eprintln('Error decoding JSON: $err')
        return
    }

    // Write decoded data to STDOUT
    println(decoded_data)
}
