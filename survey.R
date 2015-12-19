# TODO: Add comment
# 
# Author: pawelc
###############################################################################



au<-1000
u<-99000
all<-100000
(u/all)^10

p0<-u/all*(u-1)/(all-1)*(u-2)/(all-2)*(u-3)/(all-3)*(u-4)/(all-4)*(u-5)/(all-5)*(u-6)/(all-6)*(u-7)/(all-7)*(u-8)/(all-8)*(u-9)/(all-9)

choosed<-function(n) {
	p<-1
	for (i in 1:20) {
		u_all = 0
		u_u = 0
		u_au =0
		if(i<n || i >n){
			p=p*(u-u_u)/(all-u_all)
			u_all=u_all+1
			u_u=u_u+1
		}else{
			p=p*(au-u_au)/(all-u_all)
			u_all=u_all+1
			u_au=u_au+1
		}
		p
	}
	p
}
au/all*u/(all-1)*(u-1)/(all-2)*(u-2)/(all-3)*(u-3)/(all-4)*(u-4)/(all-5)*(u-5)/(all-6)*(u-6)/(all-7)*(u-7)/(all-8)*(u-8)/(all-9)
p1=0
for(i in 1:20){
	p1=p1+choosed(i)
}
p0
p1
1-(p1+p0)
