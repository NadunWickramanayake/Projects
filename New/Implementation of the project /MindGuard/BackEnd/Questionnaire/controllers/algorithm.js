
export const testTotalScore = (score) => {
    let result;
    if (score >= 1 && score <= 4) {
      result = 'Minimal depression';
    } else if (score >= 5 && score <= 9){
        result = "Mild depression"
    } else if (score >= 10 && score <= 14){
        result = "Moderate depression"
    } else if (score >= 15 && score <= 19){
        result = "Moderately severe depression"
    } else if (score >= 20 && score <= 27){
        result = "Severe depression"
    }
    
    else {
      result = 'Incorrect Total';
    }
    return result;
  }
  
  //console.log(testTotalScore(29));
