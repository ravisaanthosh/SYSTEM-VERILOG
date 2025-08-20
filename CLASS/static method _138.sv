class factory;
  static logic[7:0] ford;  //reg logic not worked!!!!!!!!!!!!
  
  static function void company();
    ford++;
  endfunction
endclass

module tb;
  factory plant;
  initial begin
    repeat(20)begin
//       plant=new; //not 
      plant.company();
      $display("static methods using class =[%0d]",plant.ford);
    end
  end
endmodule

static methods using class = [1]
static methods using class = [2]
static methods using class = [3]
static methods using class = [4]
static methods using class = [5]
static methods using class = [6]
static methods using class = [7]
static methods using class = [8]
static methods using class = [9]
static methods using class = [10]
static methods using class = [11]
static methods using class = [12]
static methods using class = [13]
static methods using class = [14]
static methods using class = [15]
static methods using class = [16]
static methods using class = [17]
static methods using class = [18]
static methods using class = [19]
static methods using class = [20]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Wed Aug 20 07:16:13 2025
Done
