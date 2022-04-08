SoliDetector, the Solidity source code analyzer

SoliDetector: Detect Security Defects of Solidity Smart Contract Based on Knowledge Graph

- [Supported Defect Types](#Supported Defect Types)
- [Real-World Attacks](#real-world attacks)





### Supported Defect Types


Num | Defect Name | Description 
--- | --- | --- 
1 | Unused State Variable (SWC-131) | Unused variables are allowed in Solidity and they do not pose a direct security issue. It is best practice though to avoid them as they can cause an increase in computations (and unnecessary gas consumption. 
 2    | Useless Assignment                       | Write the assignment statement (=) as the constant judgment (==) 
 3    | Redefined Variable (SWC-119)            | Solidity allows for ambiguous naming of state variables when inheritance is used. Redefined state variables can also occur within a single contract when there are multiple definitions on the contract and function level. 
 4    | Missing Return Statement (MRS)           | When a function is declared with a `return` parameter, but the function body has no `return` statement, the compiler does not show an error nor warns the user about this. 
 5    | Frozen Ether(FE)                         | The contracts do not provide any transferring functionality but rely on other contracts. If the called contracts are accidentally or intentionally terminated, users cannot transfer money from other accounts, effectively freezing the funds. 
 6    | Uninitialized Storage (SWC-109)          | Uninitialized storage variables can point to unexpected storage locations in the contract, which can lead to intentional or unintentional vulnerabilities. 
 7    | Integer Overflow and Underflow (SWC-101) | An overflow/underflow happens when an arithmetic operation reaches the maximum or minimum size of a type. In computer programming, an integer overflow occurs when an arithmetic operation attempts to create a numeric value that is outside of the range that can be represented with a given number of bits–either larger than the maximum or lower than the minimum representable value. 
 8    | DelegateCall (SWC-112)                   | There exists a special variant of a message call, named `delegatecall` which is identical to a message call apart from the fact that the code at the target address is executed in the context of the calling contract and `msg.sender` and `msg.value` do not change their values. This allows a smart contract to dynamically load code from a different address at runtime. Storage, current address, and balance still refer to the calling contract. Calling into untrusted contracts is very dangerous, as the code at the target address can change any storage values of the caller and has full control over the caller's balance. 
 9    | Unprotected Suicide (SWC-106)            | Due to missing or insufficient access controls, malicious parties can self-destruct the contract. 
 10   | Unchecked Call (SWC-104)                 | The return value of a message call is not checked. Execution will resume even if the called contract throws an exception. If the call fails accidentally or an attacker forces the call to fail, this may cause unexpected behavior in the subsequent program logic. 
 11   | Reentrancy (SWC-107)                     | One of the major dangers of calling external contracts is that they can take over the control flow. In the reentrancy attack (a.k.a. recursive call attack), a malicious contract calls back into the calling contract before the first invocation of the function is finished. This may cause the different invocations of the function to interact in undesirable ways. 
 12   | Bad Randomness (SWC-120)                 | Smart contracts do not support the generation of random numbers. If a truly random number can be generated in the contract,  the result of that contract execution will be completely random and other nodes cannot directly verify whether the execution result is legitimate. But smart contracts need to create random numbers, so smart contracts use existing block information to generate pseudo-random numbers, which leads to the bad randomness defect. The random number is not a real random number, there is a possibility of being predicted. The attacker can achieve the attack purpose according to the random number generation algorithm. 
 13   | Manipulated Balance Equality (MBE)       | The Manipulated Balance Equality defect will occur if the control flow decision of a contract depends on  ```this.balance value```.  The attacker can use the self-destruct API (self-destructure function) to forcefully send Ether to any contract and use this defect to manipulate the execution logic of the program. 
 14   | Nested Call (SWC-128)                    | Nested call in a contract may cause problems such as reaching the gas limit, throwing exceptions and being inaccessible, preventing the contract from executing according to normal transaction logic or making the contract itself logically unexecutable. 
 15   | Transaction Order Dependency （SWC-114） | Transactions in the blockchain need to be packaged by miners before they are finally recorded on the chain and during the packaging process. These transactions have priority in the packaging order, thus creating a transaction order dependency. Miners decide the order of execution of transactions. In the process of selecting transactions for execution, they are selected based on the size of the gas obtained from executing that transaction. As a result, attackers block other low-cost transactions by paying higher gas fees, causing certain transactions to fail to execute properly. 
 16   | Timestamp Dependency (SWC-116)           | The Timestamp Dependency defect presents a common vulnerability favoring a malicious miner. If a contract is using the timestamp of the block, that means that the miner can manipulate the timestamp for a few seconds by changing the output to be in his favor. However, this vulnerability is severe only if used in critical components of a contract. 
 17   | Leaking Ether to Arbitrary Address       | The Leaking Ether to Arbitrary Address defect occurs when a contract's funds can be withdrawn by any caller, who is neither the owner of the contract nor an investor who deposited funds to the contract. This vulnerability is caused by the failure to check a caller's identity when the caller invokes a function to send Ether to an arbitrary address. This vulnerability can be prevented by enforcing an adequate authentication on the functions for sending funds. 
 18   | Exceed Authority Access       | The Exceed Authority Access defect is mainly due to unclear function visibility or lack of sufficient permission checks, which leads to attackers being able to access or modify functions or variables that should not be accessed. If a contract developer writes a key function or variable without not only adding a permission check but also without specifying the visibility of the function or variable, in which case the default visibility is ```public```, an attacker can attack the contract through the key function or variable without permission restrictions. 
 19   | TxOrigin (SWC-115)                       | Using it will result in draining all contract funds because the ```tx.origin``` sets the attacker’s address as the owner of the contract. As such, the attacker obtains full access to the smart contract funds. ```tx.origin``` is a global variable in Solidity that returns the address of the account that sent the transaction. Using the variable for authorization could make a contract vulnerable if an authorized account calls into a malicious contract. A call could be made to the vulnerable contract that passes the authorization check since ```tx.origin``` returns the original sender of the transaction which in this case is the authorized account. 
 20   | Erroneous Constructor Name (SWC-118)     | Constructors are special functions that are called only once during the contract creation. They often perform critical, privileged actions such as setting the owner of the contract. Before Solidity version 0.4.22, the only way of defining a constructor was to create a function with the same name as the contract class containing it. A function meant to become a constructor becomes a normal, callable function if its name doesn't exactly match the contract name. This behavior sometimes leads to security issues, in particular when smart contract code is re-used with a different name but the name of the constructor function is not changed accordingly. 
 21   | Undeclared Function Visibility (SWC-100) | Functions that do not have a function visibility type specified are `public` by default. This can lead to a vulnerability if a developer forgot to set the visibility and a malicious user is able to make unauthorized or unintended state changes. 
 22   | Outdated Pragma (SWC-102)                | Using an outdated compiler version can be problematic especially if there are publicly disclosed bugs and issues that affect the current compiler version. 
 23   | Unclocked Pragram (SWC-103)              | Contracts should be deployed with the same compiler version and flags that they have been tested with thoroughly. Locking the pragma helps to ensure that contracts do not accidentally get deployed using, for example, an outdated compiler version that might introduce bugs that affect the contract system negatively. 
 24   | Undeclared StateVar Visibility (SWC-108) | Labeling the visibility explicitly makes it easier to catch incorrect assumptions about who can access the variable. 
 25   | Assert Violation (SWC-110)               | The Solidity `assert()` function is meant to assert invariants. Properly functioning code should *never* reach a failing assert statement. 
 26   | Deprecated functions (SWC-111)           | Several functions and operators in Solidity are deprecated. Using them leads to reduced code quality. With new major versions of the Solidity compiler, deprecated functions and operators may result in side effects and compile errors. 
 27   | Dos with Failed Call (SWC-113)           | External calls can fail accidentally or deliberately, which can cause a DoS condition in the contract. To minimize the damage caused by such failures, it is better to isolate each external call into its own transaction that can be initiated by the recipient of the call. This is especially relevant for payments, where it is better to let users withdraw funds rather than push funds to them automatically (this also reduces the chance of problems with the gas limit). 
 28   | Signature Malleability                   | The signature is included in the encryption function used before verifying the existence of the transaction. 
 29   | Require Violation (SWC-123)              | The ```require() ```statement is intended to validate the external input to the function. When there is an internal defect or logic problem in require, the statement is said to violate the require() requirement. 
 30   | Use of Type Bytes | In Solidity, ```bytes```, and ```byte[ ]``` provide the same function. But using ```byte[ ]``` is a waste of storage. 
 31 | Use of Type Fixed | Use a variable of type ```fixed``` or ```unfixed``` 
 32 | Private Modifier for Private Data              | Use ```private``` to modify important data such as passwords. 
 33   | Integer Division                               | All integer division rounds down to the nearest integer. If you need more precision, consider using a multiplier, or store both the numerator and denominator. 
 34   | Typographical Error (SWC-129)                  | A typographical error can occur for example when the intent of a defined operation is to sum a number to a variable (+=) but it has accidentally been defined in a wrong way (=+), introducing a typo which happens to be a valid operator. Instead of calculating the sum, it initializes the variable again. 
 35   | Ambitrary Use of Assembly | The use of assembly is error-prone and should be avoided. 




### Real-World Attacks

| Num  | Date       | Contract Name        | Defect                          | Amount         |
| ---- | ---------- | -------------------- | ------------------------------- | -------------- |
| 1    | 2016-02-06 | KotET                | Unchecked Call                  | -              |
| 2    | 2016-06-17 | The DAO              | Reentrancy                      | 3,600,000  ETH |
| 3    | 2017-07-19 | Parity               | DelegatedCall                   | $31,000,000    |
| 4    | 2017-11-06 | Parity               | Unprotected Suicide             | 513,701  ETH   |
| 5    | 2018-04-22 | BeautyChain          | Integer Overflow and Underflow  | $6,000,000,000 |
| 6    | 2018-04-25 | SmartMesh            | Integer Overflow and Underflow  | 140000000      |
| 7    | 2018-07-10 | Bancor               | Private key theft               | $12,000,000    |
| 8    | 2018-07-31 | Fomo 3D              | Bad Randomness                  | -              |
| 9    | 2018-08-01 | Fomo 3D              | Greedy Mining                   | $3,000,000     |
| 10   | 2018-10-09 | SpankChain           | Reentrancy                      | $40,000        |
| 11   | 2018-12-27 | Fountain(FTN)        | Integer Overflow and Underflow  | -              |
| 12   | 2019-12-25 | Play                 | Nest Call                       | 2,335  ETH     |
| 13   | 2020-04-19 | Lendf.Me             | ERC-Reentrancy                  | $24,696,616.00 |
| 14   | 2020-04-18 | Uniswap              | ERC-Reentrancy                  | 1,278 ETH      |
| 15   | 2016-06    | GovernMental (Ponzi) | Denial of Service/TOD(1100 ETH) | 514,874 ETH    |
| 16   | 2016-04-12 | Rubixi (Ponzi)       | Erronous Constructor Name       | -              |
