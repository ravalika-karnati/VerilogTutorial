4X1 MULTIPLEXER WITH CONDITIONAL OPERATOR

![image](https://github.com/ravalika-karnati/VerilogTutorial/assets/131842119/8b13969d-16c1-445d-bfa1-44369e4ee82d)


4X1 MULTIPLEXER WITH IF STATEMENTS

![image](https://github.com/ravalika-karnati/VerilogTutorial/assets/131842119/9c02e62a-b5d9-4485-a7fe-edb84cc42b20)


4X1 MULTIPLEXER WITH CASE STATEMENTS

![image](https://github.com/ravalika-karnati/VerilogTutorial/assets/131842119/7411982c-0a2d-4c65-9100-59c3f9817665)




MULTIPLEXERS

Multiplexer is a combinational circuit that has maximum of 2n data inputs, ‘n’ selection lines and single output line. One of these data inputs will be connected to the output based on the values of selection lines.

Since there are ‘n’ selection lines, there will be 2n possible combinations of zeros and ones. So, each combination will select only one data input. Multiplexer is also called as Mux.

4x1 Multiplexer
4x1 Multiplexer has four data inputs I3, I2, I1 & I0, two selection lines s1 & s0 and one output Y. The block diagram of 4x1 Multiplexer is shown in the following figure.

![image](https://github.com/ravalika-karnati/VerilogTutorial/assets/131842119/68c81218-dc5d-4994-88e6-201f2dabeef9)

One of these 4 inputs will be connected to the output based on the combination of inputs present at these two selection lines. Truth table of 4x1 Multiplexer is shown below.

Selection Lines	Output
S1	S0	Y
0	  0	 I0
0	  1  I1
1	  0	 I2
1 	1	 I3

From Truth table, we can directly write the Boolean function for output, Y as

Y=S1′S0′I0+S1′S0I1+S1S0′I2+S1S0I3

We can implement this Boolean function using Inverters, AND gates & OR gate. The circuit diagram of 4x1 multiplexer is shown in the following figure.

![image](https://github.com/ravalika-karnati/VerilogTutorial/assets/131842119/096a34b8-a242-4bae-9e49-a8fe79481069)


We can easily understand the operation of the above circuit. Similarly, you can implement 8x1 Multiplexer and 16x1 multiplexer by following the same procedure.

Implementation of Higher-order Multiplexers:

implementing the following two higher-order Multiplexers using lower-order Multiplexers.

8x1 Multiplexer:

In this section, let us implement 8x1 Multiplexer using 4x1 Multiplexers and 2x1 Multiplexer. We know that 4x1 Multiplexer has 4 data inputs, 2 selection lines and one output. Whereas, 8x1 Multiplexer has 8 data inputs, 3 selection lines and one output.

So, we require two 4x1 Multiplexers in first stage in order to get the 8 data inputs. Since, each 4x1 Multiplexer produces one output, we require a 2x1 Multiplexer in second stage by considering the outputs of first stage as inputs and to produce the final output.

Let the 8x1 Multiplexer has eight data inputs I7 to I0, three selection lines s2, s1 & s0 and one output Y. The Truth table of 8x1 Multiplexer is shown below.

Selection Inputs	Output
S2	S1	S0	Y
0	0	0	I0
0	0	1	I1
0	1	0	I2
0	1	1	I3
1	0	0	I4
1	0	1	I5
1	1	0	I6
1	1	1	I7
We can implement 8x1 Multiplexer using lower order Multiplexers easily by considering the above Truth table. The block diagram of 8x1 Multiplexer is shown in the following figure.

![image](https://github.com/ravalika-karnati/VerilogTutorial/assets/131842119/f34cf280-3f1d-44e3-a6da-139ce779c741)

The same selection lines, s1 & s0 are applied to both 4x1 Multiplexers. The data inputs of upper 4x1 Multiplexer are I7 to I4 and the data inputs of lower 4x1 Multiplexer are I3 to I0. Therefore, each 4x1 Multiplexer produces an output based on the values of selection lines, s1 & s0.

The outputs of first stage 4x1 Multiplexers are applied as inputs of 2x1 Multiplexer that is present in second stage. The other selection line, s2 is applied to 2x1 Multiplexer.

If s2 is zero, then the output of 2x1 Multiplexer will be one of the 4 inputs I3 to I0 based on the values of selection lines s1 & s0.

If s2 is one, then the output of 2x1 Multiplexer will be one of the 4 inputs I7 to I4 based on the values of selection lines s1 & s0.

Therefore, the overall combination of two 4x1 Multiplexers and one 2x1 Multiplexer performs as one 8x1 Multiplexer.

16x1 Multiplexer
In this section, let us implement 16x1 Multiplexer using 8x1 Multiplexers and 2x1 Multiplexer. We know that 8x1 Multiplexer has 8 data inputs, 3 selection lines and one output. Whereas, 16x1 Multiplexer has 16 data inputs, 4 selection lines and one output.

So, we require two 8x1 Multiplexers in first stage in order to get the 16 data inputs. Since, each 8x1 Multiplexer produces one output, we require a 2x1 Multiplexer in second stage by considering the outputs of first stage as inputs and to produce the final output.

Let the 16x1 Multiplexer has sixteen data inputs I15 to I0, four selection lines s3 to s0 and one output Y. The Truth table of 16x1 Multiplexer is shown below.

Selection Inputs	Output
S3	S2	S1	S0	Y
0	0	0	0	I0
0	0	0	1	I1
0	0	1	0	I2
0	0	1	1	I3
0	1	0	0	I4
0	1	0	1	I5
0	1	1	0	I6
0	1	1	1	I7
1	0	0	0	I8
1	0	0	1	I9
1	0	1	0	I10
1	0	1	1	I11
1	1	0	0	I12
1	1	0	1	I13
1	1	1	0	I14
1	1	1	1	I15
We can implement 16x1 Multiplexer using lower order Multiplexers easily by considering the above Truth table. The block diagram of 16x1 Multiplexer is shown in the following figure.

![image](https://github.com/ravalika-karnati/VerilogTutorial/assets/131842119/ba0d9b60-303c-4a1d-8130-1d8a0ee6cc9b)


The same selection lines, s2, s1 & s0 are applied to both 8x1 Multiplexers. The data inputs of upper 8x1 Multiplexer are I15 to I8 and the data inputs of lower 8x1 Multiplexer are I7 to I0. Therefore, each 8x1 Multiplexer produces an output based on the values of selection lines, s2, s1 & s0.

The outputs of first stage 8x1 Multiplexers are applied as inputs of 2x1 Multiplexer that is present in second stage. The other selection line, s3 is applied to 2x1 Multiplexer.

If s3 is zero, then the output of 2x1 Multiplexer will be one of the 8 inputs Is7 to I0 based on the values of selection lines s2, s1 & s0.

If s3 is one, then the output of 2x1 Multiplexer will be one of the 8 inputs I15 to I8 based on the values of selection lines s2, s1 & s0.

Therefore, the overall combination of two 8x1 Multiplexers and one 2x1 Multiplexer performs as one 16x1 Multiplexer.



