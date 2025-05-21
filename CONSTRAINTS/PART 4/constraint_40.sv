

class constraint_40;
	rand int da[];
	constraint c1{da.size == 4;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:9]};}
	constraint c3{da.sum() == 10;}
endclass
constraint_40 c1;
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
