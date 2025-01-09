```vhdl
entity counter is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR(3 downto 0));
end entity;

architecture behavioral of counter is
    signal internal_count : INTEGER range 0 to 15 := 0;
    signal count_slv : STD_LOGIC_VECTOR(3 downto 0);
begin
    process (clk, rst)
    begin
        if rst = '1' then
            internal_count <= 0;
        elsif rising_edge(clk) then
            if internal_count = 15 then
                internal_count <= 0;
            else
                internal_count <= internal_count + 1;
            end if;
        end if;
    end process;
    count_slv <= CONV_STD_LOGIC_VECTOR(internal_count, 4);
    count <= count_slv;    
end architecture;
```