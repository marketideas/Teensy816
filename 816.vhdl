library ieee;
use ieee.std_logic_1164.all;

entity teensy816 is
    port (
        FPGA_REGADDR: in std_logic;
        FPGA_REGRW: in std_logic;
        FPGA_DATA: inout std_logic_vector (7 downto 0);
        FPGA_BUSY: out std_logic;
        FPGA_CLK: in std_logic;
        FPGA_DBUS_FAKE: in std_logic_vector (7 downto 0);

        CPU_ABUS: out std_logic_vector (15 downto 0);
        CPU_DBUS: inout std_logic_vector (7 downto 0);

        CPU_ABORT: in std_logic;
        CPU_BE: in std_logic;
        CPU_ESTATUS: out std_logic;
        CPU_IRQ: in std_logic;
        CPU_MLOCK: out std_logic;
        CPU_MX: out std_logic;
        CPU_NMI: in std_logic;
        CPU_CLK: in std_logic;
        CPU_RW: out std_logic;
        CPU_RDY: inout std_logic;
        CPU_RESET: in std_logic;
        CPU_VDA: out std_logic;
        CPU_VPA: out std_logic;
        CPU_VPB: out std_logic
    );
end teensy816;

architecture rtl of teensy816 is
    begin
        CPU_RW <= FPGA_REGRW;
        CPU_DBUS <= FPGA_DATA when (CPU_BE = '1') else (others => 'Z');
        CPU_ABUS <= FPGA_ABUS when (CPU_BE = '1') else (others => 'Z');
    end rtl;
