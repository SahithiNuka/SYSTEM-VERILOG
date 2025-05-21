

class constraint_38;
	rand int number[];
	constraint c1{number.size == 10;}
	constraint c2{number[0] != 0;}
	constraint c3{foreach(number[i])
			number[i] inside {[0:9]};}

	function void print();
		$display("+91-%d%d%d%d%d%d%d%d%d%d",number[0],number[1],number[2],number[3],number[4],number[5],number[6],number[7],number[8],number[9]);
	endfunction
endclass
constraint_38 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					c1.print();
				end
		end
endmodule
