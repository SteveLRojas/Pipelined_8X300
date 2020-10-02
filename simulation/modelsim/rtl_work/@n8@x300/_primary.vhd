library verilog;
use verilog.vl_types.all;
entity N8X300 is
    port(
        clk             : in     vl_logic;
        n_halt          : in     vl_logic;
        n_reset         : in     vl_logic;
        I               : in     vl_logic_vector(15 downto 0);
        A               : out    vl_logic_vector(12 downto 0);
        n_IV_in         : in     vl_logic_vector(7 downto 0);
        n_IV_out        : out    vl_logic_vector(7 downto 0);
        IO_SC           : out    vl_logic;
        IO_WC           : out    vl_logic;
        IO_n_LB_w       : out    vl_logic;
        IO_n_RB_w       : out    vl_logic;
        IO_n_LB_r       : out    vl_logic;
        IO_n_RB_r       : out    vl_logic
    );
end N8X300;
