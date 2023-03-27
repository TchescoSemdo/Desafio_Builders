Before do
  # Configuração do driver
  caps = Appium.load_appium_txt file: File.expand_path("config/android.txt", Dir.pwd), verbose: true
  @driver = Appium::Driver.new(caps, true)
  Appium.promote_appium_methods Object

  # Setar timeout global de espera
  $wait_timeout = 30 # Tempo em segundos
  $wait = Selenium::WebDriver::Wait.new(timeout: $wait_timeout)

  # Inicializa o driver
  @driver.start_driver
  @driver.manage.timeouts.implicit_wait = 10
end

After do |scenario|
  if scenario.failed?
    # Tira um print da tela em caso de falha
    screenshot = "screenshots/#{Time.now.strftime('%Y-%m-%d %H-%M-%S')}.png"
    @driver.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Screenshot')
  end

  # Finaliza o driver
  @driver.driver_quit
end

# o codigo é responsável por inicializar e finalizar o driver antes e depois de cada cenário, além de tirar um screenshot em caso de falha. a instância do driver @driver ela vai ser acessada por todos os steps dos arquivos de feature.