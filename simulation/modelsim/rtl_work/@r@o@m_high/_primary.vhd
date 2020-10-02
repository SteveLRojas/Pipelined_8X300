library verilog;
use verilog.vl_types.all;
entity ROM_high is
    port(
        address         : in     vl_logic_vector(12 downto 0);
        clk             : in     vl_logic;
        data            : out    vl_logic_vector(7 downto 0)
    );
end ROM_high;
