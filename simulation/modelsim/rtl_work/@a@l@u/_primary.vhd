library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        clk             : in     vl_logic;
        flush           : in     vl_logic;
        op              : in     vl_logic_vector(2 downto 0);
        in_a            : in     vl_logic_vector(7 downto 0);
        in_b            : in     vl_logic_vector(7 downto 0);
        alu_out         : out    vl_logic_vector(7 downto 0);
        OVF_out         : out    vl_logic;
        NZ_out          : out    vl_logic
    );
end ALU;
