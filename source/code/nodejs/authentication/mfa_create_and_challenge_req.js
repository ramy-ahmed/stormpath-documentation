var account; // A previously fetched Account object

var factor = {
  type: "sms",
  challenge: { // An optional parameter
    message: "Welcome to the Example! Your authorization code is ${code}"
  },
  phone: {
    number: '+12675555555'
  }
};

account.createFactor(factor, function(err, smsFactor) {
  if (err) {
    return console.log(err);
  }

  console.log(smsFactor);
});
