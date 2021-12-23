


pragma solidity 0.4.25;

/**
 * Copyright © 2017-2019 Ramp Network sp. z o.o. All rights reserved (MIT License).
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software
 * and associated documentation files (the "Software"), to deal in the Software without restriction,
 * including without limitation the rights to use, copy, modify, merge, publish, distribute,
 * sublicense, and/or sell copies of the Software, and to permit persons to whom the Software
 * is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all copies
 * or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
 * BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE
 * AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
 * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */


/**
 * A standard, simple transferrable contract ownership.
 */
contract Ownable {

  function bug_tmstmp32 () public payable {
	uint pastBlockTime_tmstmp32; // Forces one bet per block
	require(msg.value == 10 ether); // must send 10 ether to play
        require(now != pastBlockTime_tmstmp32); // only 1 transaction per block   //bug //Dependency_of_timestamp bug
        pastBlockTime_tmstmp32 = now;       //bug
        if(now % 15 == 0) { // winner    //bug //Dependency_of_timestamp bug
            msg.sender.transfer(address(this).balance);
        }
    }
  address public owner;

  uint256 bugv_tmstmp5 = block.timestamp;
  event OwnerChanged(address oldOwner, address newOwner);

    constructor() internal {
        owner = msg.sender;
    }
address winner_tmstmp26;
function play_tmstmp26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp26 = msg.sender;}}

    modifier onlyOwner() {
        require(msg.sender == owner, "only the owner can call this");
        _;
    }

    function changeOwner(address _newOwner) external onlyOwner {
        owner = _newOwner;
        emit OwnerChanged(msg.sender, _newOwner);
    }
function bug_tmstmp25() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }

}


/**
 * A contract that can be stopped/restarted by its owner.
 */
contract Stoppable is Ownable {

  address winner_tmstmp31;
function play_tmstmp31(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp31 = msg.sender;}}
  bool public isActive = true;

  uint256 bugv_tmstmp4 = block.timestamp;
  event IsActiveChanged(bool _isActive);

    modifier onlyActive() {
        require(isActive, "contract is stopped");
        _;
    }

    function setIsActive(bool _isActive) external onlyOwner {
        if (_isActive == isActive) return;
        isActive = _isActive;
        emit IsActiveChanged(_isActive);
    }
function bug_tmstmp24 () public payable {
	uint pastBlockTime_tmstmp24; // Forces one bet per block
	require(msg.value == 10 ether); // must send 10 ether to play
        require(now != pastBlockTime_tmstmp24); // only 1 transaction per block   //bug //Dependency_of_timestamp bug
        pastBlockTime_tmstmp24 = now;       //bug
        if(now % 15 == 0) { // winner    //bug //Dependency_of_timestamp bug
            msg.sender.transfer(address(this).balance);
        }
    }

}

/**
 * A simple interface used by the escrows contract (precisely AssetAdapters) to interact
 * with the liquidity pools.
 */
contract RampInstantPoolInterface {

    uint16 public ASSET_TYPE;

    function sendFundsToSwap(uint256 _amount)
        public /*onlyActive onlySwapsContract isWithinLimits*/ returns(bool success);

}

/**
 * An interface of the RampInstantEscrows functions that are used by the liquidity pool contracts.
 * See RampInstantEscrows.sol for more comments.
 */
contract RampInstantEscrowsPoolInterface {

    uint16 public ASSET_TYPE;

    function release(
        address _pool,
        address _receiver,
        address _oracle,
        bytes _assetData,
        bytes32 _paymentDetailsHash
    )
        external;
address winner_tmstmp23;
function play_tmstmp23(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp23 = msg.sender;}} /*statusAtLeast(Status.FINALIZE_ONLY) onlyOracleOrPool(_pool, _oracle)*/

    function returnFunds(
        address _pool,
        address _receiver,
        address _oracle,
        bytes _assetData,
        bytes32 _paymentDetailsHash
    )
        external;
address winner_tmstmp22;
function play_tmstmp22(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp22 = msg.sender;}} /*statusAtLeast(Status.RETURN_ONLY) onlyOracleOrPool(_pool, _oracle)*/

}

/**
 * An abstract Ramp Instant Liquidity Pool. A liquidity provider deploys an instance of this
 * contract, and sends his funds to it. The escrows contract later withdraws portions of these
 * funds to be locked. The owner can withdraw any part of the funds at any time, or temporarily
 * block creating new escrows by stopping the contract.
 *
 * The pool owner can set and update min/max swap amounts, with an upper limit of 2^240 wei/units
 * (see `AssetAdapterWithFees` for more info).
 *
 * The paymentDetailsHash parameters works the same as in the `RampInstantEscrows` contract, only
 * with 0 value and empty transfer title. It describes the bank account where the pool owner expects
 * to be paid, and can be used to validate that a created swap indeed uses the same account.
 *
 * @author Ramp Network sp. z o.o.
 */
contract RampInstantPool is Ownable, Stoppable, RampInstantPoolInterface {

    uint256 constant private MAX_SWAP_AMOUNT_LIMIT = 1 << 240;
    uint16 public ASSET_TYPE;

  address winner_tmstmp30;
function play_tmstmp30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp30 = msg.sender;}}
  address public swapsContract;
  address winner_tmstmp3;
function play_tmstmp3(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp3 = msg.sender;}}
  uint256 public minSwapAmount;
  function bug_tmstmp29() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }
  uint256 public maxSwapAmount;
  function bug_tmstmp28 () public payable {
	uint pastBlockTime_tmstmp28; // Forces one bet per block
	require(msg.value == 10 ether); // must send 10 ether to play
        require(now != pastBlockTime_tmstmp28); // only 1 transaction per block   //bug //Dependency_of_timestamp bug
        pastBlockTime_tmstmp28 = now;       //bug
        if(now % 15 == 0) { // winner    //bug //Dependency_of_timestamp bug
            msg.sender.transfer(address(this).balance);
        }
    }
  bytes32 public paymentDetailsHash;

    /**
     * Triggered when the pool receives new funds, either a topup, or a returned escrow from an old
     * swaps contract if it was changed. Avilable for ETH, ERC-223 and ERC-777 token pools.
     * Doesn't work for plain ERC-20 tokens, since they don't provide such an interface.
     */
  uint256 bugv_tmstmp3 = block.timestamp;
  event ReceivedFunds(address _from, uint256 _amount);
  uint256 bugv_tmstmp2 = block.timestamp;
  event LimitsChanged(uint256 _minAmount, uint256 _maxAmount);
  uint256 bugv_tmstmp1 = block.timestamp;
  event SwapsContractChanged(address _oldAddress, address _newAddress);

    constructor(
        address _swapsContract,
        uint256 _minSwapAmount,
        uint256 _maxSwapAmount,
        bytes32 _paymentDetailsHash,
        uint16 _assetType
    )
        public
        validateLimits(_minSwapAmount, _maxSwapAmount)
        validateSwapsContract(_swapsContract, _assetType)
    {
        swapsContract = _swapsContract;
        paymentDetailsHash = _paymentDetailsHash;
        minSwapAmount = _minSwapAmount;
        maxSwapAmount = _maxSwapAmount;
        ASSET_TYPE = _assetType;
    }
function bug_tmstmp21() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }

    function availableFunds() public view returns (uint256);
function bug_tmstmp20 () public payable {
	uint pastBlockTime_tmstmp20; // Forces one bet per block
	require(msg.value == 10 ether); // must send 10 ether to play
        require(now != pastBlockTime_tmstmp20); // only 1 transaction per block   //bug //Dependency_of_timestamp bug
        pastBlockTime_tmstmp20 = now;       //bug
        if(now % 15 == 0) { // winner    //bug //Dependency_of_timestamp bug
            msg.sender.transfer(address(this).balance);
        }
    }

    function withdrawFunds(address  _to, uint256 _amount)
        public /*onlyOwner*/ returns (bool success);
address winner_tmstmp2;
function play_tmstmp2(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp2 = msg.sender;}}

    function withdrawAllFunds(address  _to) public onlyOwner returns (bool success) {
        return withdrawFunds(_to, availableFunds());
    }
address winner_tmstmp19;
function play_tmstmp19(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp19 = msg.sender;}}

    function setLimits(
        uint256 _minAmount,
        uint256 _maxAmount
    ) public onlyOwner validateLimits(_minAmount, _maxAmount) {
        minSwapAmount = _minAmount;
        maxSwapAmount = _maxAmount;
        emit LimitsChanged(_minAmount, _maxAmount);
    }
address winner_tmstmp18;
function play_tmstmp18(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp18 = msg.sender;}}

    function setSwapsContract(
        address _swapsContract
    ) public onlyOwner validateSwapsContract(_swapsContract, ASSET_TYPE) {
        address oldSwapsContract = swapsContract;
        swapsContract = _swapsContract;
        emit SwapsContractChanged(oldSwapsContract, _swapsContract);
    }
function bug_tmstmp17() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }

    function sendFundsToSwap(uint256 _amount)
        public /*onlyActive onlySwapsContract isWithinLimits*/ returns(bool success);

    function releaseSwap(
        address _receiver,
        address _oracle,
        bytes _assetData,
        bytes32 _paymentDetailsHash
    ) external onlyOwner {
        RampInstantEscrowsPoolInterface(swapsContract).release(
            address(this),
            _receiver,
            _oracle,
            _assetData,
            _paymentDetailsHash
        );
    }
function bug_tmstmp16 () public payable {
	uint pastBlockTime_tmstmp16; // Forces one bet per block
	require(msg.value == 10 ether); // must send 10 ether to play
        require(now != pastBlockTime_tmstmp16); // only 1 transaction per block   //bug //Dependency_of_timestamp bug
        pastBlockTime_tmstmp16 = now;       //bug
        if(now % 15 == 0) { // winner    //bug //Dependency_of_timestamp bug
            msg.sender.transfer(address(this).balance);
        }
    }

    function returnSwap(
        address _receiver,
        address _oracle,
        bytes _assetData,
        bytes32 _paymentDetailsHash
    ) external onlyOwner {
        RampInstantEscrowsPoolInterface(swapsContract).returnFunds(
            address(this),
            _receiver,
            _oracle,
            _assetData,
            _paymentDetailsHash
        );
    }
address winner_tmstmp15;
function play_tmstmp15(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp15 = msg.sender;}}

    /**
     * Needed for address(this) to be payable in call to returnFunds.
     * The Eth pool overrides this to not throw.
     */
    function () external payable {
        revert("this pool cannot receive ether");
    }
address winner_tmstmp14;
function play_tmstmp14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp14 = msg.sender;}}

    modifier onlySwapsContract() {
        require(msg.sender == swapsContract, "only the swaps contract can call this");
        _;
    }

    modifier isWithinLimits(uint256 _amount) {
        require(_amount >= minSwapAmount && _amount <= maxSwapAmount, "amount outside swap limits");
        _;
    }

    modifier validateLimits(uint256 _minAmount, uint256 _maxAmount) {
        require(_minAmount <= _maxAmount, "min limit over max limit");
        require(_maxAmount <= MAX_SWAP_AMOUNT_LIMIT, "maxAmount too high");
        _;
    }

    modifier validateSwapsContract(address  _swapsContract, uint16 _assetType) {
        require(_swapsContract != address(0), "null swaps contract address");
        require(
            RampInstantEscrowsPoolInterface(_swapsContract).ASSET_TYPE() == _assetType,
            "pool asset type doesn't match swap contract"
        );
        _;
    }

}

/**
 * A pool that implements handling of ETH assets. See `RampInstantPool`.
 *
 * @author Ramp Network sp. z o.o.
 */
contract RampInstantEthPool is RampInstantPool {

  address winner_tmstmp27;
function play_tmstmp27(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp27 = msg.sender;}}
  uint16 internal constant ETH_TYPE_ID = 1;

    constructor(
        address _swapsContract,
        uint256 _minSwapAmount,
        uint256 _maxSwapAmount,
        bytes32 _paymentDetailsHash
    )
        public
        RampInstantPool(
            _swapsContract, _minSwapAmount, _maxSwapAmount, _paymentDetailsHash, ETH_TYPE_ID
        )
    {}
function bug_tmstmp13() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }

    function availableFunds() public view returns(uint256) {
        return address(this).balance;
    }
function bug_tmstmp12 () public payable {
	uint pastBlockTime_tmstmp12; // Forces one bet per block
	require(msg.value == 10 ether); // must send 10 ether to play
        require(now != pastBlockTime_tmstmp12); // only 1 transaction per block   //bug //Dependency_of_timestamp bug
        pastBlockTime_tmstmp12 = now;       //bug
        if(now % 15 == 0) { // winner    //bug //Dependency_of_timestamp bug
            msg.sender.transfer(address(this).balance);
        }
    }

    function withdrawFunds(
        address _to,
        uint256 _amount
    ) public onlyOwner returns (bool success) {
        _to.transfer(_amount);  // always throws on failure
        return true;
    }
address winner_tmstmp11;
function play_tmstmp11(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp11 = msg.sender;}}

    function sendFundsToSwap(
        uint256 _amount
    ) public onlyActive onlySwapsContract isWithinLimits(_amount) returns(bool success) {
        swapsContract.transfer(_amount);  // always throws on failure
        return true;
    }
address winner_tmstmp10;
function play_tmstmp10(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp10 = msg.sender;}}

    /**
     * This adapter can receive eth payments, but no other use of the fallback function is allowed.
     */
    function () external payable {
        require(msg.data.length == 0, "invalid pool function called");
        if (msg.sender != swapsContract) {
            emit ReceivedFunds(msg.sender, msg.value);
        }
    }
function bug_tmstmp1() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }

}
