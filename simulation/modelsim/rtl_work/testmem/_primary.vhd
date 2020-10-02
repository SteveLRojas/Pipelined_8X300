library verilog;
use verilog.vl_types.all;
entity testmem is
    port(
        clk             : in     vl_logic;
        wren            : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        Din             : in     vl_logic_vector(7 downto 0);
        Dout            : out    vl_logic_vector(7 downto 0)
    );
end testmem;
