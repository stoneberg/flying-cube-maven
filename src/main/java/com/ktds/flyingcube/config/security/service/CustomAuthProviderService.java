package com.ktds.flyingcube.config.security.service;

import com.ktds.flyingcube.biz.auth.domain.ERole;
import com.ktds.flyingcube.biz.auth.domain.User;
import com.ktds.flyingcube.biz.auth.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Optional;


@Service
@RequiredArgsConstructor
public class CustomAuthProviderService implements AuthenticationProvider {

    private static final Logger log = LoggerFactory.getLogger(CustomAuthProviderService.class);
    private final UserRepository userRepository;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        UsernamePasswordAuthenticationToken authenticationToken = null;

        String username = authentication.getName();
        String password = authentication.getCredentials().toString();
        Optional<User> optUser = userRepository.findByUsername(username);
        log.info("@optUser=====================>{}", optUser);

        if (optUser.isPresent()) {
            User user = optUser.get();
            Integer id = user.getId();
            String email = user.getEmail();

            if (username.equals(user.getUsername()) && BCrypt.checkpw(password, user.getPassword())) {
                Collection<GrantedAuthority> grantedAuthorities = getGrantedAuthorities(user);
                authenticationToken = new UsernamePasswordAuthenticationToken(
                        new UserDetailsImpl(id, username, email, password, grantedAuthorities), password, grantedAuthorities);
            }

        } else {
            throw new UsernameNotFoundException("User name " + username + " not found");
        }
        return authenticationToken;
    }

    private Collection<GrantedAuthority> getGrantedAuthorities(User user) {
        Collection<GrantedAuthority> grantedAuthorities = new ArrayList<>();

        user.getRoles().forEach(role -> {
            ERole userRole = role.getName();
            log.info("@userRole=====================>{}", userRole.getValue());
            if (userRole.equals(ERole.ROLE_ADMIN)) {
                grantedAuthorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
            } else {
                grantedAuthorities.add(new SimpleGrantedAuthority("ROLE_USER"));
            }
        });

        return grantedAuthorities;
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
}
