# Safe Hand

***

## 【Introduction of Safe Hand】
- This application is based on Banking app where a user can deposit, withdraw,borrow and payoff his/her ether by decentralized network with the concept of Ethereum blockchain

&nbsp;

## 【Video Overview】
***
## 【Screenshots】
![SH1](https://user-images.githubusercontent.com/37343956/141669636-e9a3cd4d-b915-4007-9577-db62a1fb1c61.png)

![sh2](https://user-images.githubusercontent.com/37343956/141669638-d5c3458c-406b-4d9a-adf6-2692be20567f.png)

![sh3](https://user-images.githubusercontent.com/37343956/141669640-48480904-85ea-47a3-ae52-8c455cb29cdd.png)



## 【Setup】

### Setup private network by using Ganache-CLI
1. Download Ganache-CLI from link below  
https://www.trufflesuite.com/ganache  


2. Execute Ganache   (If you want to use local test network .You can also use Rinkby,ropsten,kovan test network also)
```
$ ganache-cli -d
```
※ `-d` option is the option in order to be able to use same address on Ganache-CLI every time.

&nbsp;


### Setup wallet by using Metamask
1. Add MetaMask to browser (Chrome or FireFox or Opera or Brave)    
https://metamask.io/  


2. Adjust appropriate newwork below 
```
http://127.0.0.1:7545
```

&nbsp;


### Setup backend
1. Deploy contracts to private network of Ganache
```
(root directory)

$ truffle migrate --reset development/rinkby/ropsten/kovan
```

&nbsp;


### Setup frontend
1. NPM modules install
```
$ cd client
$ npm install

```

2. Execute command below in root directory.
```
$ cd ..
$ npm run start
```

3. Access to browser by using link 
```
http://localhost:3000
```

&nbsp;

***
