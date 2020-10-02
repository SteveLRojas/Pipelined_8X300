library verilog;
use verilog.vl_types.all;
entity right_rotate is
    port(
        clk             : in     vl_logic;
        regf_in         : in     vl_logic_vector(7 downto 0);
        IO_in           : in     vl_logic_vector(7 downto 0);
        rotate_out      : out    vl_logic_vector(7 downto 0);
        S0              : in     vl_logic_vector(2 downto 0);
        R               : in     vl_logic_vector(2 downto 0);
        source          : in     vl_logic
    );
end right_rotate;
