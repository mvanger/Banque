var Bank = {
  accountData: {},

  renderDepositForm: function(){
    $('#accounts-balance').hide();
    $('.deposit-form').show();
  },

  renderAddAccountForm: function(){
    $('#accounts-balance').hide();
    $('.add-account-form').show();
  },

  completeDeposit: function(){
    $('#accounts-balance').show();
    $('.deposit-form').hide();
    Bank.loadAccounts();
  },

  completeAddAccount: function(){
    $('#accounts-balance').show();
    $('.add-account-form').hide();
    Bank.loadAccounts();
  },

  loadAccounts: function(){
    $.ajax({
      url: '/accounts',
      dataType: 'json'
    }).done(function(data){
      Bank.accountData = data;
      Bank.showAccounts();
    });
  },

  showAccounts: function(){
    var balance = 0;
    $('.individual-accounts').remove();
    $.each(Bank.accountData.data, function(index, accountInfo){
      $('.account-table').append('<tr class="individual-accounts" id="' + index + '"></tr>');
      $('#' + index + '').append('<td class="table-type">' + accountInfo.name + '</td>');
      $('#' + index + '').append('<td class="table-info">$' + accountInfo.balance + '</td>');
      balance += accountInfo.balance;
    });
    $('#total-balance-float').remove();
    $('#total-balance').append('<td class="table-info" id="total-balance-float">$' + balance + '</td>');
  },

  clickFunctions: function(){
    var that = this;
    $('#deposit-button').on('click', that.renderDepositForm);
    // $('.submit-deposit').on('click', that.completeDeposit);
    $('#add-account').on('click', that.renderAddAccountForm);
  }
};

$('document').ready(function() {
  Bank.clickFunctions();
});