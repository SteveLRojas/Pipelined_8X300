library verilog;
use verilog.vl_types.all;
entity decode_unit is
    port(
        clk             : in     vl_logic;
        RST             : in     vl_logic;
        hazard          : in     vl_logic;
        I               : in     vl_logic_vector(15 downto 0);
        SC              : out    vl_logic;
        WC              : out    vl_logic;
        n_LB_w          : out    vl_logic;
        n_RB_w          : out    vl_logic;
        n_LB_r          : out    vl_logic;
        n_RB_r          : out    vl_logic;
        rotate_S0       : out    vl_logic_vector(2 downto 0);
        rotate_R        : out    vl_logic_vector(2 downto 0);
        rotate_source   : out    vl_logic;
        rotate_mux      : out    vl_logic;
        mask_L          : out    vl_logic_vector(2 downto 0);
        alu_op          : out    vl_logic_vector(2 downto 0);
        alu_mux         : out    vl_logic;
        alu_I_field     : out    vl_logic_vector(7 downto 0);
        latch_wren      : out    vl_logic;
        latch_address_w : out    vl_logic_vector(1 downto 0);
        latch_address_r : out    vl_logic_vector(1 downto 0);
        merge_D0        : out    vl_logic_vector(2 downto 0);
        shift_L         : out    vl_logic_vector(2 downto 0);
        regf_a          : out    vl_logic_vector(2 downto 0);
        regf_w          : out    vl_logic_vector(2 downto 0);
        regf_wren       : out    vl_logic;
        PC_JMP          : out    vl_logic;
        PC_XEC          : out    vl_logic;
        PC_NZT          : out    vl_logic;
        PC_I_field      : out    vl_logic_vector(12 downto 0);
        long_I          : out    vl_logic
    );
end decode_unit;
