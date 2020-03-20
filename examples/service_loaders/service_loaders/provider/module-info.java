module se.kvadrat.provider_module {
  requires se.kvadrat.service_module;
  provides se.kvadrat.service.Service with se.kvadrat.provider.Provider;
}