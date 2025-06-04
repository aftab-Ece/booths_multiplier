### `shift_reg.v`

A parameterized 16-bit shift register used in Booth's multiplier implementation. It supports:

- **Parallel load**: Loads data from `in` when `ld = 1`
- **Serial shift**: Shifts right by 1, inserts `serial_in` at MSB when `shift = 1`
- **Synchronous reset**: Clears the register when `reset = 1`

#### I/O Summary:
| Signal     | Direction | Description                       |
|------------|-----------|-----------------------------------|
| `in`       | input     | 16-bit parallel data input        |
| `serial_in`| input     | 1-bit input used during shifting  |
| `ld`       | input     | Load enable                       |
| `shift`    | input     | Shift enable                      |
| `reset`    | input     | Synchronous reset                 |
| `clk`      | input     | Clock signal                      |
| `out`      | output    | Current value of the shift register |

Used as part of the Booth’s multiplier datapath.
