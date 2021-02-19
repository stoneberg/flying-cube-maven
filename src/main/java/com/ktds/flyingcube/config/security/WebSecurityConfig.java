package com.ktds.flyingcube.config.security;

import com.ktds.flyingcube.common.utils.JwtUtils;
import com.ktds.flyingcube.config.security.jwt.ForbiddenHandler;
import com.ktds.flyingcube.config.security.jwt.UnauthorizedHandler;
import com.ktds.flyingcube.config.security.jwt.AuthTokenFilter;
import com.ktds.flyingcube.config.security.service.UserDetailsServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
@RequiredArgsConstructor
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    // private final CustomAuthProviderService customAuthProviderService;
    private final UserDetailsServiceImpl userDetailsService;
    private final UnauthorizedHandler unauthorizedHandler; // 401
    private final ForbiddenHandler forbiddenHandler; // 403
    private final JwtUtils jwtUtils;

    @Override
    public void configure(AuthenticationManagerBuilder authenticationManagerBuilder) throws Exception {
        authenticationManagerBuilder.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }

    //    @Override
    //    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    //        auth.authenticationProvider(customAuthProviderService);
    //    }

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .httpBasic().disable()
                .cors().and()
                .csrf().disable()
                .headers().frameOptions().disable().and()
                .exceptionHandling()
                .authenticationEntryPoint(unauthorizedHandler)
                .accessDeniedHandler(forbiddenHandler)
                .and()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .authorizeRequests()
                //.antMatchers("/api/**").permitAll()
                .antMatchers("/api/auth/**", "/h2-console/**", "/stomp/**").permitAll()
                .antMatchers("/api/application/**").hasAnyRole("USER", "ADMIN")
                //.antMatchers("/api/users/**").hasRole("ADMIN")
                .antMatchers("/api/users/**").hasAnyRole("USER", "ADMIN")
                .anyRequest().authenticated();

        http.addFilterBefore(authenticationJwtTokenFilter(), UsernamePasswordAuthenticationFilter.class);
    }

    @Bean
    public AuthTokenFilter authenticationJwtTokenFilter() {
        return new AuthTokenFilter(jwtUtils, userDetailsService);
    }


}
