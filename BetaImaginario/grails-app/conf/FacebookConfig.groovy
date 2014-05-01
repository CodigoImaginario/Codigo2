
import org.springframework.context.annotation.Bean;
import org.springframework.social.UserIdSource;
import org.springframework.social.config.annotation.EnableInMemoryConnectionRepository;
import org.springframework.social.connect.ConnectionFactoryLocator;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.connect.web.ConnectController;
import org.springframework.social.facebook.config.annotation.EnableFacebook;

@EnableFacebook(appId="535677199886834", appSecret="ed9f1860d4b44ca77e0cbc2117f6f65a")
@EnableInMemoryConnectionRepository
public class FacebookConfig {

	@Bean
	public ConnectController connectController(ConnectionFactoryLocator connectionFactoryLocator, ConnectionRepository connectionRepository) {
		return new ConnectController(connectionFactoryLocator, connectionRepository);
	}

	@Bean
	public UserIdSource userIdSource() {
		return new UserIdSource() {
			@Override
			public String getUserId() {
				return "testuser";
			}
		};
	}

}