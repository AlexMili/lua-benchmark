local tabl = {1,2,3,4,5,6,7}

local niter = 1000
local sumpairs = 0
local sumnum = 0
local sumipairs = 0

for i=0,niter do
	local t0 = torch.tic()
	for k,_ in pairs(tabl) do
		local var = tabl[k]
	end
	sumpairs = sumpairs + torch.toc(t0)
end
print("pairs(table) access took an average of "..sumpairs/niter)

for i=0,niter do
	local t0 = torch.tic()
	for k,_ in ipairs(tabl) do
		local var = tabl[k]
	end
	sumipairs = sumipairs + torch.toc(t0)
end
print("ipairs(table) access took an average of "..sumipairs/niter)

for i=0,niter do
	local t0 = torch.tic()
	for j=1,#tabl do
		local var = tabl[k]
	end
	sumnum = sumnum + torch.toc(t0)
end
print("#table access took an average of "..sumnum/niter)