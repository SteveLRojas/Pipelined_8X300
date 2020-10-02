library verilog;
use verilog.vl_types.all;
entity IO_mod is
    port(
        clk             : in     vl_logic;
        IO_SC           : in     vl_logic;
        IO_WC           : in     vl_logic;
        IO_n_LB_w       : in     vl_logic;
        IO_n_LB_r       : in     vl_logic;
        n_IV_out        : in     vl_logic_vector(7 downto 0);
        LB_Din          : in     vl_logic_vector(7 downto 0);
        RB_Din          : in     vl_logic_vector(7 downto 0);
        LB_Dout         : out    vl_logic_vector(7 downto 0);
        RB_Dout         : out    vl_logic_vector(7 downto 0);
        n_IV_in         : out    vl_logic_vector(7 downto 0);
        IO_address      : out    vl_logic_vector(15 downto 0)
    );
end IO_mod;
