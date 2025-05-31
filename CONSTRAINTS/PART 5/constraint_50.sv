

class constraint_50;
	rand bit[7:0] da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i==0 || i==da.size-1)
				da[i]%2 == 0;
			else
				da[i] inside {[1:10]};}
endclass
constraint_50 c1;
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
