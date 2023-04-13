library verilog;
use verilog.vl_types.all;
entity S1061534_lab5 is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        s               : out    vl_logic_vector(3 downto 0);
        c_input         : in     vl_logic;
        c_output        : out    vl_logic
    );
end S1061534_lab5;
