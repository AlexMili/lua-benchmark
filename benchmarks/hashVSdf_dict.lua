require "Dataframe"
tds = require "tds"

local tabl = {["col1"]=1,["col2"]=2,["col3"]=3,["col4"]=4,["col5"]=5,["col6"]=6,["col7"]=7}

local niter = 1000
local sumdict = 0
local sumhash = 0

for i=0,niter do
	local t0 = torch.tic()
	vdict = Df_Dict(tabl)
	sumdict = sumdict + torch.toc(t0)
end
print("Df_Dict init took an average of "..sumdict/niter)

for i=0,niter do
	local t1 = torch.tic()
	vhash = tds.Hash(tabl)
	sumhash = sumhash + torch.toc(t1)
end
print("Hash init took an average of "..sumhash/niter)

print("-----------------------------------")

sumdict = 0
sumhash = 0

for i=0,niter do
	local t0 = torch.tic()
	local t = vdict["col5"]
	sumdict = sumdict + torch.toc(t0)
end
print("Df_Dict access key took an average of "..sumdict/niter)

for i=0,niter do
	local t1 = torch.tic()
	local t = vhash["col5"]
	sumhash = sumhash + torch.toc(t1)
end
print("Hash access key took an average of "..sumhash/niter)