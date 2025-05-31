

class constraint_44;
	rand int da[];
	constraint c1{da.size == 5;}
	constraint c3{foreach(da[i])
			da[i] == 2**(i+3);}
endclass
constraint_44 c1;
module test();
	initial	
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule
