

class constraint_36;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:50]};}
	constraint c3{foreach(da[i])
			if(i>0)
				da[i] > da[i-1]; }
endclass
constraint_36 c1;
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
