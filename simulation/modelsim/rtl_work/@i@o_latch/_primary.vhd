library verilog;
use verilog.vl_types.all;
entity IO_latch is
    port(
        clk             : in     vl_logic;
        latch_wren      : in     vl_logic;
        latch_address_w : in     vl_logic_vector(1 downto 0);
        latch_address_r : in     vl_logic_vector(1 downto 0);
        merge_in        : in     vl_logic_vector(7 downto 0);
        IO_in           : in     vl_logic_vector(7 downto 0);
        merge_out       : out    vl_logic_vector(7 downto 0)
    );
end IO_latch;
