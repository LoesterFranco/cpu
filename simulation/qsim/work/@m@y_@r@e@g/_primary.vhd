library verilog;
use verilog.vl_types.all;
entity MY_REG is
    port(
        DATA            : in     vl_logic_vector(15 downto 0);
        RE              : in     vl_logic;
        WE              : in     vl_logic;
        WB              : in     vl_logic;
        AX              : in     vl_logic;
        BX              : in     vl_logic;
        CX              : in     vl_logic;
        DX              : in     vl_logic;
        AH              : in     vl_logic;
        BH              : in     vl_logic;
        CH              : in     vl_logic;
        DH              : in     vl_logic;
        AL              : in     vl_logic;
        BL              : in     vl_logic;
        CL              : in     vl_logic;
        DL              : in     vl_logic;
        SP              : in     vl_logic;
        BP              : in     vl_logic;
        SI              : in     vl_logic;
        DI              : in     vl_logic;
        IP              : in     vl_logic;
        reset           : in     vl_logic;
        Rout            : out    vl_logic_vector(15 downto 0)
    );
end MY_REG;
