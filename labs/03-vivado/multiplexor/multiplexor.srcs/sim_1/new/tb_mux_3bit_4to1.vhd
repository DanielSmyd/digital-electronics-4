------------------------------------------------------------------------
--
-- Testbench for 2-bit binary comparator.
-- EDA Playground
--
-- Copyright (c) 2020-2021 Tomas Fryza
-- Dept. of Radio Electronics, Brno University of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------------------
entity mux_3bit_4to1 is
    -- Entity of testbench is always empty
end entity mux_3bit_4to1;

------------------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------------------
architecture testbench of mux_3bit_4to1 is

    -- Local signals
    signal s_a           : std_logic_vector(2 - 1 downto 0);
    signal s_b           : std_logic_vector(2 - 1 downto 0);
    signal s_c           : std_logic_vector(2 - 1 downto 0);
    signal s_d           : std_logic_vector(2 - 1 downto 0);
    signal s_sel         : std_logic_vector(2 - 1 downto 0);
    signal s_f           : std_logic_vector(2 - 1 downto 0);
   
begin
    -- Connecting testbench signals with comparator_2bit entity (Unit Under Test)
    uut_comparator_2bit : entity work.mux_3bit_4to1
        port map(
            a_i           => s_a,
            b_i           => s_b,
            c_i           => s_c,
            d_i           => s_d,
            sel_i         => s_sel,
            f_i           => s_f,
            
        );

    --------------------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------------------
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;


        
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end architecture testbench;
