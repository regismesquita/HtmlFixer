#encoding=UTF-8
file_list = ARGV.empty? ? STDIN.read.split("\n") : ARGV
file_list.each do |file|
  text = File.open(file,'r').read
  text.gsub!(/[áÁâÂàÀãÃçÇéÉêÊíÍóÓôÔõÕúÚ]/,"á"=>"&aacute;","Á"=>"&Aacute;","â"=>"&acirc;","Â"=>"&Acirc;","à"=>"&agrave;","À"=>"&Agrave;","ã"=>"&atilde;","Ã"=>"&Atilde;","ç"=>"&ccedil;","Ç"=>"&Ccedil;","é"=>"&eacute;","É"=>"&Eacute;","ê"=>"&ecirc;","Ê"=>"&Ecirc;","í"=>"&iacute;","Í"=>"&Iacute;","ó"=>"&oacute;","Ó"=>"&Oacute;","ô"=>"&ocirc;","Ô"=>"&Ocirc;","õ"=>"&otilde;","Õ"=>"&Otilde;","ú"=>"&uacute;","Ú"=>"&UacuteA;");
  File.open(file,'w').puts text
end
