class GrandStream < Oxidized::Model
  cmd "/cgi-bin/dologin?password=%{password}" do |cfg|
    sid = JSON.load(cfg)["body"]["sid"]
    cmd "/cgi-bin/download_cfg?sid=#{sid}"
  end

  cfg :http do
  end
end
