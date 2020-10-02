library verilog;
use verilog.vl_types.all;
entity mask_unit is
    port(
        clk             : in     vl_logic;
        mask_in         : in     vl_logic_vector(7 downto 0);
        L_select        : in     vl_logic_vector(2 downto 0);
        mask_out        : out    vl_logic_vector(7 downto 0)
    );
end mask_unit;
