# Lab 2: Josef Macek

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:

   ![image](https://user-images.githubusercontent.com/99491847/156238290-23444df9-4083-4eff-9472-1821f2a3f3ba.png)

   Less than:

   ![image](https://user-images.githubusercontent.com/99491847/156238301-8e3c7c94-9a5f-4d9e-9ea6-dca5ced766b1.png)

2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![image](https://user-images.githubusercontent.com/99491847/156239399-9f4462bd-6f2d-46cc-8eda-a57f6d48d0e9.png)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx??**

```vhdl
   p_stimulus : process
    begin
        report "Stimulus process started" severity note;


        -- test 1
        s_b <= "0001"; s_a <= "1001"; wait for 100 ns;
        assert ((s_B_greater_A = '0') and (s_B_equals_A = '0') and (s_B_less_A = '1'))
        report "Test failed for input combination: 0001, 1001" severity error;
        
        -- test 2
        s_b <= "1001"; s_a <= "0001"; wait for 100 ns;
        assert ((s_B_greater_A = '1') and (s_B_equals_A = '0') and (s_B_less_A = '0'))
        report "Test failed for input combination: 1001, 0001" severity error;
        
        -- test 3
        s_b <= "1001"; s_a <= "1001"; wait for 100 ns;
        assert ((s_B_greater_A = '0') and (s_B_equals_A = '1') and (s_B_less_A = '0'))
        report "Test failed for input combination: 1001, 1001" severity error;
        
         -- test 4
        s_b <= "0000"; s_a <= "0000"; wait for 100 ns;
        assert ((s_B_greater_A = '0') and (s_B_equals_A = '1') and (s_B_less_A = '0'))
        report "Test failed for input combination: 0000, 0000" severity error;
       
        
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

   ![image](https://user-images.githubusercontent.com/99491847/156244779-d0337449-8a4c-427a-af18-9ebec2ab6b23.png)

3. Link to your public EDA Playground example:

  https://www.edaplayground.com/x/BuJR

