global.item_array=array_create(23,[0,0,"","",0,0,false,false,false,false,0]);
global.next_fillable_item_index=0;

item_id=0;
name="";
description="";
gridX=64;
gridY=112;
t_bound=false;
b_bound=false;
l_bound=false;
r_bound=false;
item_type=0;


for (i=0; i<20; i+=1){
	if (i==0){
		t_bound=true;
		b_bound=false;
		l_bound=true;
		r_bound=false;
	}

	if (i==1 || i==2){
		t_bound=true;
		b_bound=false;
		l_bound=false;
		r_bound=false;
	}
	if (i==3){
		t_bound=true;
		b_bound=false;
		l_bound=false;
		r_bound=true;
	}
	if (i==4 || i==8 || i==12){
		t_bound=false;
		b_bound=false;
		l_bound=true;
		r_bound=false;
	}
	if (i==5 || i==6 || i==9 || i==10 || i==13 || i==14){
		t_bound=false;
		b_bound=false;
		l_bound=false;
		r_bound=false;
	}
	if (i==7 || i==11 || i==15){
		t_bound=false;
		b_bound=false;
		l_bound=false;
		r_bound=true;
	}
	if (i==16){
		t_bound=false;
		b_bound=true;
		l_bound=true;
		r_bound=false;
	}
	if (i==17 || i==18){
		t_bound=false;
		b_bound=true;
		l_bound=false;
		r_bound=false;
	}
	if (i==19){
		t_bound=false;
		b_bound=true;
		l_bound=false;
		r_bound=true;
	}
	global.item_array[i]=[i,item_id,name,description,gridX,gridY,t_bound,b_bound,l_bound,r_bound,item_type];
	if (i==3 || i==7 || i==11 || i==15){
		gridX=64;
		gridY+=128;
	}
	else{
		gridX+=128;
	}
}


global.item_array[20]=[20,100,"","",608,368,true,true,true,true,100];
global.item_array[21]=[21,101,"","",608,496,true,true,true,true,101];
global.item_array[22]=[22,102,"","",608,624,true,true,true,true,102];
