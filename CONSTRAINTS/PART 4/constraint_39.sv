

class constraint_39;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:20]};}
	constraint c3{(da[0] + da[2] + da[4] + da[6] + da[8]) == (da[1] + da[3] + da[5] + da[7] + da[9]);}  
endclass
constraint_39 c1;
module test();
	initial
		begin
			repeat(5) 
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule
