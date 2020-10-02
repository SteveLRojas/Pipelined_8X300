library verilog;
use verilog.vl_types.all;
entity reg_file is
    port(
        clk             : in     vl_logic;
        wren            : in     vl_logic;
        a_address       : in     vl_logic_vector(2 downto 0);
        w_address       : in     vl_logic_vector(2 downto 0);
        w_data          : in     vl_logic_vector(7 downto 0);
        a_data          : out    vl_logic_vector(7 downto 0);
        b_data          : out    vl_logic_vector(7 downto 0)
    );
end reg_file;
