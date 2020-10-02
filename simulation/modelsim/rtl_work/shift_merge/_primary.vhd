library verilog;
use verilog.vl_types.all;
entity shift_merge is
    port(
        clk             : in     vl_logic;
        shift_in        : in     vl_logic_vector(7 downto 0);
        merge_in        : in     vl_logic_vector(7 downto 0);
        merge_out       : out    vl_logic_vector(7 downto 0);
        D0              : in     vl_logic_vector(2 downto 0);
        L_select        : in     vl_logic_vector(2 downto 0)
    );
end shift_merge;
