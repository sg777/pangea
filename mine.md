# CHIPS MINING

Initially CHIPS being mined using SHA256 POW, since all the CHIPS are mined and the block reward is zero, its no longer economical to mine CHIPS using ASIC. For those reasons CHIPS migrated from POW to APOW.

## Below are the steps to mine CHIPS

Setgenerate is not present in CHIPS codebase, generatetoaddress works fine to use the internal miner contained in Chips codebase while Stratum mining can be done with the usual submitblock and getbalocktemplate

1. Create mine.sh with the following content
```
Please replace bWQKUzuWKJYCpDAv93xNuceANgL3aQ559k with your own chips address.
#!/bin/bash
date
echo started in ${DIR}
while true; do
        chips-cli generatetoaddress 100 'bWQKUzuWKJYCpDAv93xNuceANgL3aQ559k' 1000000
done
exec bash
```

2. Make mine.sh executable
```
chmod +x mine.sh
```

3. Mine with internal CPU miner
```
./mine.sh
```

4. Stopping the miner
```
CTRL+C
```

## What makes CHIPS mining profitable and sustainable

Since CHIPS is the cryptocurrency used to play poker and other decentralized gaming applications developed in the future, a percentage of the gaming reward 0.01% or 0.001 CHIPS whichever is lower will be left as block mining fee and this reward will be adjustable based on the CHIPS mining fee.


