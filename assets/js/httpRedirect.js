function openKCWindow()  
{  
    try {
  window.open("http:"+gadgetInfo.URL,'_blank');
return true;
} catch (error) {
  return false;
}
}
openKCWindow(); 